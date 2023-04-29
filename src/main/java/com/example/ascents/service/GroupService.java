package com.example.ascents.service;

import com.example.ascents.entity.Group;
import com.example.ascents.repositories.GroupRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GroupService {
    private final GroupRepository groupRepository;

    public List<Group> listGroup(){
        return groupRepository.findAll();
    }

    public void saveGroup(Group group){
        groupRepository.save(group);
    }

    public void deleteGroup(Long gId){
        groupRepository.deleteById(gId);
    }

    public Group getGroupById(Long gId){
        return groupRepository.findById(gId).orElse(null);
    }
}
